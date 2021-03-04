package com.systemic.util;

import com.sun.xml.internal.bind.v2.model.core.PropertyInfo;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.util.Random;

/**
 * Created by 9111665 on 2020-11-18.
 * Description:
 */
public class AESHelper {

    /** DESede(TripleDES)키로 바꿀 때 MD5로해쉬할 횟수. */
    private static final int ITERATIONS = 1000;

    /** UTF-8 CharSet. */
    private static final String UTF8 = "UTF-8";

    /**
     * 새로운 AES helper를 생성하는 생성자.
     */
    protected AESHelper() {
    }

    /**
     * AES 복호화
     *
     * @param key 대칭키 Key byte Array
     * @param message 데이타를 복호화 하기 위한 문자열
     * @return 복호화된 문자열
     * @throws Exception the exception
     */
    public static String decrypt(String message) throws Exception {
        String key = "hawks2019hystec!";
        SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes(), "AES");
//		Cipher cipher = Cipher.getInstance("AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");

        cipher.init(Cipher.DECRYPT_MODE, skeySpec);

        byte[] original = cipher.doFinal(Base64.decode(message));
        return new String(original, UTF8).trim();
    }

    /**
     * AES 암호화
     *
     * @param key 대칭키 Key byte Array
     * @param message 데이타를 암호화 하기 위한 문자열
     * @return 암호화된 문자열(AES->Base64)
     * @throws Exception the exception
     */
    public static String encrypt(String message) throws Exception {

        String key = "hawks2019hystec!";
        SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
        cipher.init(Cipher.ENCRYPT_MODE, skeySpec);


        StringBuffer sb = new StringBuffer();
        sb.append(message);

        byte[] input = sb.toString().getBytes(UTF8);

        if(input.length < 16) {
            for(int i=0; i < (16 - input.length); i++)  {
                sb.append((char)0x00);
            }
        }else {
            int share = input.length / 16;
            int mod = input.length % 16;
            if(mod > 0) {
                share += 1;
            }

            for(int i=0; i < ((share*16) - input.length); i++) {
                sb.append((char)0x00);
            }
        }

        byte[] encrypted = cipher.doFinal(sb.toString().getBytes(UTF8));
        return new String(org.apache.commons.codec.binary.Base64.encodeBase64(encrypted));
    }

    /**
     * AESHelper에서 사용할 key를 암호화 하기 위해서 사용.
     *
     * @param password key를 암호화 하기 위한 패스워드
     * @param keyString 암호화할 키(128 bit)
     * @return 암호화된 키
     * @throws Exception the exception
     */
    public static String encryptKey(char[] password, String keyString) throws Exception {
        // Begin by creating a random salt of 64 bits (8 bytes)
        byte[] salt = new byte[8];
        Random random = new Random();
        random.nextBytes(salt);

        // Create the PBEKeySpec with the given password
        PBEKeySpec keySpec = new PBEKeySpec(password);

        // Get a SecretKeyFactory for PBEWithMD5AndDES
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");

        // Create our key
        SecretKey key = keyFactory.generateSecret(keySpec);

        // Now create a parameter spec for our salt and iterations
        PBEParameterSpec paramSpec = new PBEParameterSpec(salt, ITERATIONS);

        // Create a cipher and initialize it for encrypting
        Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
        cipher.init(Cipher.ENCRYPT_MODE, key, paramSpec);

        byte[] ciphertext = cipher.doFinal(keyString.getBytes());

        String saltString = Base64.encode(salt);
        String ciphertextString = Base64.encode(ciphertext);
        return saltString + ciphertextString;
    }

    /**
     * AESHelper에서 사용할 암호화된 키를 복호화.
     *
     * @param password 복호화 하기위한 패스워드
     * @param encryptedKey 암호화된 키
     * @return 복호화된 키
     * @throws Exception the exception
     */
    public static String decryptKey(char[] password, String encryptedKey) throws Exception {
        // Begin by splitting the text into salt and text Strings
        // salt is first 12 chars, BASE64 encoded from 8 bytes.
        String salt = encryptedKey.substring(0, 12);
        String ciphertext = encryptedKey.substring(12, encryptedKey.length());

        // BASE64Decode the bytes for the salt and the ciphertext
        byte[] saltArray = Base64.decode(salt);
        byte[] ciphertextArray = Base64.decode(ciphertext);

        // Create the PBEKeySpec with the given password
        PBEKeySpec keySpec = new PBEKeySpec(password);

        // Get a SecretKeyFactory for PBEWithMD5AndDES
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");

        // Create our key
        SecretKey key = keyFactory.generateSecret(keySpec);

        // Now create a parameter spec for our salt and iterations
        PBEParameterSpec paramSpec = new PBEParameterSpec(saltArray, ITERATIONS);

        // Create a cipher and initialize it for encrypting
        Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
        cipher.init(Cipher.DECRYPT_MODE, key, paramSpec);

        // Perform the actual decryption
        byte[] plaintextArray = cipher.doFinal(ciphertextArray);

        return new String(plaintextArray);
    }
}
