.class public Lcom/miui/antispam/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PACKAGE_NAME_PHONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "com.android.server.telecom"

    sput-object v0, Lcom/miui/antispam/c/a;->PACKAGE_NAME_PHONE:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "com.android.phone"

    sput-object v0, Lcom/miui/antispam/c/a;->PACKAGE_NAME_PHONE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adx(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method
