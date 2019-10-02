.class public Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;
.super Ljava/lang/Object;
.source "MiuiActivatorInfo.java"


# instance fields
.field public final phone:Ljava/lang/String;

.field public final simId:Ljava/lang/String;

.field public final simIndex:I

.field public final vKey2:Ljava/lang/String;

.field public final vKey2Nonce:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;->simIndex:I

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;->phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;->simId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;->vKey2:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;->vKey2Nonce:Ljava/lang/String;

    return-void
.end method
