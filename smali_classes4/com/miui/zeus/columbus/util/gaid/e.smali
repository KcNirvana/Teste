.class public Lcom/miui/zeus/columbus/util/gaid/e;
.super Ljava/lang/Object;
.source "AdvertisingIdHolder.java"


# static fields
.field private static final a:Ljava/lang/String; = "AdvertisingIdHolder"

.field private static final b:Ljava/lang/String; = "google_advertising_id"

.field private static c:Lcom/miui/zeus/columbus/util/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/zeus/columbus/util/k;

    const-string v1, "google_advertising_id"

    invoke-direct {v0, v1}, Lcom/miui/zeus/columbus/util/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/util/gaid/e;->c:Lcom/miui/zeus/columbus/util/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/zeus/columbus/util/gaid/e;->c:Lcom/miui/zeus/columbus/util/k;

    const-string v1, "google_advertising_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/columbus/util/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/zeus/columbus/util/gaid/e;->c:Lcom/miui/zeus/columbus/util/k;

    const-string v1, "google_advertising_id"

    invoke-virtual {v0, v1, p0}, Lcom/miui/zeus/columbus/util/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
