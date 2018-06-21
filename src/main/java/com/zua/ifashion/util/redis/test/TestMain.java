package com.zua.ifashion.util.redis.test;

import com.zua.ifashion.util.redis.util.MyRedisPool;
import redis.clients.jedis.Jedis;

public class TestMain {
    public static void main(String[] args) {
        Jedis jedis = MyRedisPool.getJedis();
        jedis.set("userName", "LYC");
        System.out.println(jedis.get("userName"));
    }
}