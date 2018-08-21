.class public Lcom/miui/personalassistant/shopping/bean/Shopping;
.super Lcom/miui/personalassistant/favorite/module/FavBase;
.source "Shopping.java"


# instance fields
.field private price:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/module/FavBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/bean/Shopping;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/bean/Shopping;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/bean/Shopping;->price:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/bean/Shopping;->source:Ljava/lang/String;

    return-void
.end method
