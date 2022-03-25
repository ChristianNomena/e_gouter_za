# e_goute_za

A Flutter project for INFO 593

## Stockage
Récupération du fichier JSON et mettre ses données dans le stockage interne de l'appareil.

## Pages
- Accueil
- Historique des commandes
- Historique des ventes journalières
- A propos

## Données JSON
``` json
{
    "restaurants": [
        {
            "id": restaurantId,
            "name": restaurantName,
            "shops": [
                {
                    "id": shopId,
                    "location": shopLocation
                }
            ],
            "foods": [
                {
                     "id": foodId,
                     "name": foodName,
                     "price": foodPrice,
                     "image": foodImage,
                  "restaurant": foodRestaurant
                }
            ]
        }
    ],
    "commands": [
        {
            "id": commandId,
            "restaurant": commandRestaurant,
            "date": commandDate,
            "orders":  [
                {
                    "id": orderId,
                    "designation": orderDesignation,
                    "unit_price": orderUnitPrice,
                    "quantity": orderQuantity,
                    "amount": orderAmount
                }
            ]
        }
    ],
    "daily_sales": [
        {
            "id": dailySaleId,
            "date": dailySaleDate,
            "incomes": [
                {
                    "id": incomeId,
                    "restaurant": incomeRestaurant,
                    "total": incomeTotal
                }
            ]
        }
    ]
}
```
