.class Lmiui/a/e$a;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lmiui/a/e;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lmiui/a/e;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/a/e$a;->a:Lmiui/a/e;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p2, p0, Lmiui/a/e$a;->b:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lmiui/a/e$a;->b:Landroid/app/Dialog;

    return-object v0
.end method
