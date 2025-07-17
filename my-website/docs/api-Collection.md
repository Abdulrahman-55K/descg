---
id: api-Collection
title: API Reference
---

**Authrization collection:**
```json
{
  {
	"info": {
		"_postman_id": "1da0d0c6-e2fe-4ecc-9047-20e01319f078",
		"name": "user",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "46631888"
	},
	"item": [
		{
			"name": "register",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "{\r\n    \"name\" : \"user555\",\r\n    \"email\" : \"user555@test.com\",\r\n    \"password\" : \"Pass1234\"\r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/register",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"register"
					]
				}
			},
			"response": []
		},
		{
			"name": "login",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "{\r\n    \"name\" : \"user555\",\r\n    \"email\" : \"user555@test.com\",\r\n    \"password\" : \"Pass1234\"\r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/login",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"login"
					]
				}
			},
			"response": []
		}
	]
}
}
```

---
**Products Collection:**
```json
{
	"info": {
		"_postman_id": "1dc398ed-e91d-4a34-a0bc-d64acba6919f",
		"name": "product",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "46631888"
	},
	"item": [
		{
			"name": "index",
			"protocolProfileBehavior": {
				"disableBodyPruning": true
			},
			"request": {
				"method": "GET",
				"header": [
					{
						"key": "",
						"value": "",
						"type": "text",
						"disabled": true
					},
					{
						"key": "",
						"value": "",
						"type": "text",
						"disabled": true
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\r\n    \"user_id\":\"1\"\r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/products",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"products"
					]
				}
			},
			"response": []
		},
		{
			"name": "add",
			"request": {
				"method": "POST",
				"header": [
					{
						"key": "Accept",
						"value": "application/json",
						"type": "text"
					},
					{
						"key": "Authorization",
						"value": "Bearer GATlKiGVGQQed7hK5McHjXEVn1kKUZI8JNKlbY1gb4ea1dca",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\r\n    \"name\":\"samsung g50d\",\r\n    \"price\":\"850\",\r\n    \"sku\": \"NK-LL-L\",\r\n    \"category\": \"electronics\",\r\n    \"features\": [\"oled\"],\r\n    \"keywords\": [\"gaming monitor\"],\r\n    \"tone\": \"casual\",\r\n    \"length\": \"small\",\r\n    \"final_description\": \"this is a test description\"\r\n\r\n    \r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/products",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"products"
					]
				}
			},
			"response": []
		},
		{
			"name": "update",
			"request": {
				"method": "PUT",
				"header": [
					{
						"key": "Accept",
						"value": "application/json",
						"type": "text"
					},
					{
						"key": "Authorization",
						"value": "Bearer GATlKiGVGQQed7hK5McHjXEVn1kKUZI8JNKlbY1gb4ea1dca",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\r\n  \"name\":\"samsung s22\",\r\n   \"price\": \"500\",\r\n    \"sku\": \"NK-HN-MN\",\r\n    \"category\": \"electronics\",\r\n    \"features\": [\"64g\"],\r\n    \"keywords\": [\"samsung\"],\r\n    \"tone\": \"casual\",\r\n    \"length\": \"short\",\r\n    \"final_description\": \"updated description\"\r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/products/18",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"products",
						"18"
					]
				}
			},
			"response": []
		},
		{
			"name": "delete",
			"request": {
				"method": "DELETE",
				"header": [
					{
						"key": "Authorization",
						"value": "Bearer GATlKiGVGQQed7hK5McHjXEVn1kKUZI8JNKlbY1gb4ea1dca",
						"type": "text"
					},
					{
						"key": "Accept",
						"value": "application/json",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": ""
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/products/18",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"products",
						"18"
					]
				}
			},
			"response": []
		}
	]
}
```

---

**Ai logs collection:**
```json
{
	"info": {
		"_postman_id": "7e962e99-408b-4864-a51f-a029264a62b3",
		"name": "AI Logs",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "46631888"
	},
	"item": [
		{
			"name": "generate desc",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/ai-description-logs/generate/5",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"ai-description-logs",
						"generate",
						"5"
					]
				}
			},
			"response": []
		},
		{
			"name": "index",
			"protocolProfileBehavior": {
				"disableBodyPruning": true
			},
			"request": {
				"method": "GET",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": ""
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/ai-description-logs",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"ai-description-logs"
					]
				}
			},
			"response": []
		},
		{
			"name": "show",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://127.0.0.1:8000/api/ai-description-logs/3",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"ai-description-logs",
						"3"
					]
				}
			},
			"response": []
		},
		{
			"name": "add aiLog",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "{\r\n    \"product_id\": 3,\r\n  \"generated_text\": \"This is a generated product description.\",\r\n  \"request_data\": {\r\n    \"prompt\": \"Write a product description for Product X\"\r\n  },\r\n  \"response_data\": {\r\n    \"description\": \"Product X is an innovative solution for modern needs.\"\r\n  }\r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/ai-description-logs",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"ai-description-logs"
					]
				}
			},
			"response": []
		},
		{
			"name": "update",
			"request": {
				"method": "PUT",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "{\r\n    \"product_id\": 1,\r\n  \"generated_text\": \"This is a edited product description.\",\r\n  \"request_data\": {\r\n    \"prompt\": \"Write a product description for Product edited X\"\r\n  },\r\n  \"response_data\": {\r\n    \"description\": \"edited Product X is an innovative solution for modern needs.\"\r\n  }\r\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/ai-description-logs/2",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"ai-description-logs",
						"2"
					]
				}
			},
			"response": []
		},
		{
			"name": "delete",
			"request": {
				"method": "DELETE",
				"header": [],
				"body": {
					"mode": "raw",
					"raw": "",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "http://127.0.0.1:8000/api/ai-description-logs/3",
					"protocol": "http",
					"host": [
						"127",
						"0",
						"0",
						"1"
					],
					"port": "8000",
					"path": [
						"api",
						"ai-description-logs",
						"3"
					]
				}
			},
			"response": []
		}
	]
}
```