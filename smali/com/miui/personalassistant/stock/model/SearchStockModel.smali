.class public Lcom/miui/personalassistant/stock/model/SearchStockModel;
.super Ljava/lang/Object;
.source "SearchStockModel.java"


# instance fields
.field private mAdded:Z

.field private mStock:Lcom/miui/personalassistant/stock/model/Stock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStock()Lcom/miui/personalassistant/stock/model/Stock;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/SearchStockModel;->mStock:Lcom/miui/personalassistant/stock/model/Stock;

    return-object v0
.end method

.method public isAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/stock/model/SearchStockModel;->mAdded:Z

    return v0
.end method

.method public setAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/stock/model/SearchStockModel;->mAdded:Z

    return-void
.end method

.method public setStock(Lcom/miui/personalassistant/stock/model/Stock;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/SearchStockModel;->mStock:Lcom/miui/personalassistant/stock/model/Stock;

    return-void
.end method
