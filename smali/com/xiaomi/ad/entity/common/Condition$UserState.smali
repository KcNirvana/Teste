.class public Lcom/xiaomi/ad/entity/common/Condition$UserState;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserState"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "UserState"


# instance fields
.field private speed:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/ad/entity/common/Condition;


# direct methods
.method public constructor <init>(Lcom/xiaomi/ad/entity/common/Condition;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Condition$UserState;->this$0:Lcom/xiaomi/ad/entity/common/Condition;

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed()Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$UserState;->speed:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UserState"

    return-object v0
.end method
