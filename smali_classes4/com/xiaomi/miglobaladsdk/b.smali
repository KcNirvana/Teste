.class public final Lcom/xiaomi/miglobaladsdk/b;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field static final a:Lcom/xiaomi/utils/m;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/utils/m;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/xiaomi/utils/m;-><init>(IIII)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/b;->a:Lcom/xiaomi/utils/m;

    const-string v4, "com.google.android.gms.ads"

    const-string v5, "com.facebook.ads"

    const-string v6, "com.miui.zeus.columbus.ad"

    const-string v7, "com.xiaomi.miglobaladsdk"

    const-string v8, "com.xiaomi.ad.mediationconfig"

    const-string v9, "com.xiaomi.analytics"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/b;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "MEDIATION"

    invoke-static {p0, v0}, Lcom/miui/zeus/logger/MLog;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
