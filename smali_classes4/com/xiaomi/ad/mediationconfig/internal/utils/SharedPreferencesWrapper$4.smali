.class Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->getInt(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->c:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->c:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->a:Ljava/lang/String;

    iget v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
