.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;
.source "ServiceTokenUtilImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->val$sid:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;)V

    return-void
.end method


# virtual methods
.method protected realWork()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->val$sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
