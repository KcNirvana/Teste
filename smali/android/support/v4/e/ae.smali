.class public Landroid/support/v4/e/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/e/ae$d;,
        Landroid/support/v4/e/ae$c;,
        Landroid/support/v4/e/ae$b;,
        Landroid/support/v4/e/ae$a;,
        Landroid/support/v4/e/ae$e;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/e/ae$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/e/ae$d;

    invoke-direct {v0}, Landroid/support/v4/e/ae$d;-><init>()V

    sput-object v0, Landroid/support/v4/e/ae;->a:Landroid/support/v4/e/ae$e;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/e/ae$c;

    invoke-direct {v0}, Landroid/support/v4/e/ae$c;-><init>()V

    sput-object v0, Landroid/support/v4/e/ae;->a:Landroid/support/v4/e/ae$e;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/e/ae$b;

    invoke-direct {v0}, Landroid/support/v4/e/ae$b;-><init>()V

    sput-object v0, Landroid/support/v4/e/ae;->a:Landroid/support/v4/e/ae$e;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/e/ae$a;

    invoke-direct {v0}, Landroid/support/v4/e/ae$a;-><init>()V

    sput-object v0, Landroid/support/v4/e/ae;->a:Landroid/support/v4/e/ae$e;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/e/ae;->a:Landroid/support/v4/e/ae$e;

    invoke-interface {v0, p0}, Landroid/support/v4/e/ae$e;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
