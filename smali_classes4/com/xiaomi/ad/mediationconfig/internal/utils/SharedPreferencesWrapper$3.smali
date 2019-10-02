.class Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->c:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->call()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->c:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;->b:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
