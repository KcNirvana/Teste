.class Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->contains(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
