.class Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;
.super Ljava/lang/Object;
.source "UserBehaviourBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

.field final synthetic c:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;


# direct methods
.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->c:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_NULL:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->a:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    return-void
.end method
