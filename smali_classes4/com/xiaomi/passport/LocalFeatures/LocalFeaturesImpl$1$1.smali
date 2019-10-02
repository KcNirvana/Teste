.class Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;
.super Ljava/lang/Object;
.source "LocalFeaturesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;->this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;->this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    iget-object v0, v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->this$0:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;->this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    iget-object v1, v1, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->mResponse:Lcom/xiaomi/accounts/AccountAuthenticatorResponse;

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;->this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    iget-object v2, v2, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;->this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    iget-object v3, v3, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1$1;->this$1:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    iget-object v4, v4, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->val$serviceId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->access$000(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
