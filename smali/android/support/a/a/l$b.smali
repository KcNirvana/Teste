.class public Landroid/support/a/a/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/a/l$b;->a:I

    iput-boolean v0, p0, Landroid/support/a/a/l$b;->b:Z

    iput-boolean v0, p0, Landroid/support/a/a/l$b;->c:Z

    iput-boolean v0, p0, Landroid/support/a/a/l$b;->d:Z

    return-void
.end method
