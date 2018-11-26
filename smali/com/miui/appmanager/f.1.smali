.class public Lcom/miui/appmanager/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aTw:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "key_has_app_update"

    invoke-static {v0}, Lmiui/provider/ExtraSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/appmanager/f;->aTw:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
