.class Landroid/support/a/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/support/a/a/r$w;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>(Landroid/support/a/a/r$w;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/a/a/c$b;->a:Landroid/support/a/a/r$w;

    iput p2, p0, Landroid/support/a/a/c$b;->b:I

    iput p3, p0, Landroid/support/a/a/c$b;->c:I

    iput p4, p0, Landroid/support/a/a/c$b;->d:I

    iput p5, p0, Landroid/support/a/a/c$b;->e:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/a/a/r$w;IIIILandroid/support/a/a/d;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/support/a/a/c$b;-><init>(Landroid/support/a/a/r$w;IIII)V

    return-void
.end method
