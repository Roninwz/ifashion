package com.zua.ifashion.util.redis.test;

import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class PubSubDemo {

    public static void main( String[] args )
    {
        // 连接redis服务端
        JedisPool jedisPool = new JedisPool(new JedisPoolConfig(), "127.0.0.1", 6379,1000,"roninwz");
       // jedisPool.auth("123456"); // 设置密码
        System.out.println(String.format("redis pool is starting, redis ip %s, redis port %d", "127.0.0.1", 6379));

        SubThread subThread = new SubThread(jedisPool);  //订阅者
        subThread.start();

        Publisher publisher = new Publisher(jedisPool);    //发布者
        publisher.start();
    }
}