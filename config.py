import redis

redis_host = '172.17.0.3'
redis_port = 6379

cache = redis.Redis(host=redis_host, port=redis_port, db=0)


