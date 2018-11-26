.class public final Lcom/miui/hybrid/accessory/a/f/b/b;
.super Ljava/lang/Object;


# instance fields
.field public final b:B

.field public final bhH:B

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/miui/hybrid/accessory/a/f/b/b;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/miui/hybrid/accessory/a/f/b/b;->bhH:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/miui/hybrid/accessory/a/f/b/b;->b:B

    iput p3, p0, Lcom/miui/hybrid/accessory/a/f/b/b;->c:I

    return-void
.end method
