.class Landroid/support/v4/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ad$b;


# instance fields
.field final synthetic a:Landroid/support/v4/app/n;

.field final synthetic b:Landroid/support/v4/app/f;


# direct methods
.method constructor <init>(Landroid/support/v4/app/f;Landroid/support/v4/app/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/f;

    iput-object p2, p0, Landroid/support/v4/app/g;->a:Landroid/support/v4/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
