.class Lmiui/external/e;
.super Landroid/app/DialogFragment;
.source ""


# instance fields
.field final synthetic bre:Lmiui/external/k;

.field private brf:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lmiui/external/k;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/e;->bre:Lmiui/external/k;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p2, p0, Lmiui/external/e;->brf:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lmiui/external/e;->brf:Landroid/app/Dialog;

    return-object v0
.end method
