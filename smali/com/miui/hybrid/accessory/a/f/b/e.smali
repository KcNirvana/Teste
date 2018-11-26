.class public final Lcom/miui/hybrid/accessory/a/f/b/e;
.super Ljava/lang/Object;


# instance fields
.field public final b:I

.field public final bhK:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/miui/hybrid/accessory/a/f/b/e;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/miui/hybrid/accessory/a/f/b/e;->bhK:B

    iput p2, p0, Lcom/miui/hybrid/accessory/a/f/b/e;->b:I

    return-void
.end method
