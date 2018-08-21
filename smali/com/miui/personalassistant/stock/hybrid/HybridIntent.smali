.class public Lcom/miui/personalassistant/stock/hybrid/HybridIntent;
.super Ljava/lang/Object;
.source "HybridIntent.java"


# static fields
.field private static final ACTION_VIEW_HYBRID:Ljava/lang/String; = "com.miui.personalassistant.WEB"

.field private static final EXTRA_REVERSE_COLOR_URL:Ljava/lang/String; = "https://www.laohu8.com/xm/s/%s?reverse_color=1"

.field private static final EXTRA_URL:Ljava/lang/String; = "https://www.laohu8.com/xm/s/%s"

.field private static final EXTRA_URL_KEY:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startHybridActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.WEB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->isColorSchemaRedGrow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "https://www.laohu8.com/xm/s/%s"

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v1, "https://www.laohu8.com/xm/s/%s?reverse_color=1"

    goto :goto_0
.end method
