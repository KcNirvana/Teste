.class Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$1;
.super Lcom/xiaomi/ad/mediationconfig/internal/utils/ThrowableCaughtRunnable;
.source "SharedPreferencesWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
