---
id: api
title: API Documentation
sidebar_position: 1
---

# description generation Overview (descg)

This API allows clients to manage products and receive AI-generated product descriptions.

## App Summary

The application enables a **client** to:
- Register and log in.
- Add product details such as `name`, `category`, `price`, etc.
- The app then sends this data to an AI service.
- The AI returns a **generated description** for the product.
- Clients can view, update, or delete their products.

---

## Authentication

- This API uses **token-based authentication** (Laravel Sanctum).

---
## Endpoints

### authorization

`POST /register`

**Request Body:**
```json
{
  "name": "user",
  "email": "user@test.com",
  "password": "Pass1234"
}
```
**Response:**
```json
{
  "message": "User registered successfully",
  "token": "11|T8zEW7hsVAB6qFzFYK5b3y0a389gj4********",
  "user": {
    "id": 1,
    "name": "user",
    "email": "user@test.com"
  }
}
```

`POST /login`

**Request Body:**
```json
{
  "email": "user@test.com",
  "password": "Pass1234"
}
```
**Response:**
```json
{
  "message": "Login successful.",
  "token": "11|T8zEW7hsVAB6qFzFYK5b3y0a389gj4********",
  "user": {
    "id": 1,
    "name": "user",
    "email": "user@test.com"
  }
}
```
---
## products

`POST /products`

**Request body:**

```json
{
  "name": "samsung g50d",
  "price": "850",
  "user_id": "1",
  "sku": "NK-BL-M",
  "category": "electronics",
  "features": "oled",
  "keywords": "oled",
  "tone": "casual",
  "length": "small",
  "final_description": "this is a test description"
} 
```
**Response:**

```json
{
  {
  "message": "Product created successfully",
  "product": {
    "user_id": "1",
    "name": "samsung g50d",
    "price": "850",
    "sku": "NK-BL-M",
    "category": "electronics",
    "features": "oled",
    "keywords": "oled",
    "tone": "casual",
    "length": "short",
    "final_description": "this is a test description",
    "updated_at": "2025-07-16T11:50:00.000000Z",
    "created_at": "2025-07-16T11:50:00.000000Z",
    "id": 1
  }
}
}
```

`GET /products`

**Request body:**
```json
{
  
  "user_id": "1"
  
} 
```
**Response:**
```json
{
  
  "user_id": "1"
  
} 
```json
{
  "name": "samsung g50d",
    "price": "850",
    "sku": "NK-BL-M",
    "category": "electronics",
    "features": "oled",
    "keywords": "oled",
    "tone": "casual",
    "length": "short",
    "final_description": "this is a test description",
    "updated_at": "2025-07-16T11:50:00.000000Z",
    "created_at": "2025-07-16T11:50:00.000000Z"
}
```

`GET /api/products/{id}`


```http
GET /api/products/1
```
**Response:**

```json
{
  "name": "samsung g50d",
    "price": "850",
    "sku": "NK-BL-M",
    "category": "electronics",
    "features": "oled",
    "keywords": "oled",
    "tone": "casual",
    "length": "short",
    "final_description": "this is a test description",
    "updated_at": "2025-07-16T11:50:00.000000Z",
    "created_at": "2025-07-16T11:50:00.000000Z"
}
```
`DELETE /api/products/{id}`

```http
DELETE /api/products/1
```
**Response:**

```json
Product deleted successfully
```
---
## Ai-Logs
`POST /ai-description-logs`

**Request body:**
```json
{
  "product_id": 1,
  "generated_text": "This is a generated product description.",
  "request_data": {
    "prompt": "Write a product description for Product X"
  },
  "response_data": {
    "description": "Product X is an innovative solution for modern needs."
  }
}

```
**Response:**
```json
{
  "message": "Log created successfully",
  "log": {
    "product_id": 1,
    "generated_text": "This is a generated product description.",
    "request_data": {
      "prompt": "Write a product description for Product X"
    },
    "response_data": {
      "description": "Product X is an innovative solution for modern needs."
    },
    "id": 4
  }
}
```
`GET /ai-description-logs`

```http
GET /ai-description-logs
```

**Response:**
```json
{
  "message": "Log created successfully",
  "log": {
    "product_id": 1,
    "generated_text": "This is a generated product description.",
    "request_data": {
      "prompt": "Write a product description for Product X"
    },
    "response_data": {
      "description": "Product X is an innovative solution for modern needs."
    },
    "id": 4
  }
}
```
`GET /ai-description-logs/{id}`
```http
GET /ai-description-logs/1
```   
**Response:**
```json
{
  "product_id": 1,
  "generated_text": "This is a generated product description.",
  "request_data": {
    "prompt": "Write a product description for Product X"
  },
  "response_data": {
    "description": "Product X is an innovative solution for modern needs."
  },
  "id": 4
}
```

`DELETE /ai-description-logs/{id}`

```http
DELETE /ai-description-logs/1
```
**Response:**
```json
{
  "message": "Log deleted successfully"
}
```


---
### How It Works

When a client submits a product (including details like name, category, and price), the application receives this request and forwards the data to an AI service. The AI analyzes the product information and returns a generated description. The application then saves the product along with the AI-generated description and responds back to the client with the completed product entry.

![Product Flow](/img/descg.svg)

---
