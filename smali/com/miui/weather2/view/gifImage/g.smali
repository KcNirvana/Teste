.class final Lcom/miui/weather2/view/gifImage/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/view/gifImage/a$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method public b(I)[I
    .locals 1

    new-array v0, p1, [I

    return-object v0
.end method
