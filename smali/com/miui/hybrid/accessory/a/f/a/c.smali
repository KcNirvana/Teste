.class public Lcom/miui/hybrid/accessory/a/f/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/miui/hybrid/accessory/a/f/a/c;->b:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/hybrid/accessory/a/f/a/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/a/c;->c:Ljava/lang/String;

    return-void
.end method
