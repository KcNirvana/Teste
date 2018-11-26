.class final Lmiui/external/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic brc:Lmiui/external/k;


# direct methods
.method constructor <init>(Lmiui/external/k;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/c;->brc:Lmiui/external/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lmiui/external/c;->brc:Lmiui/external/k;

    invoke-virtual {v0}, Lmiui/external/k;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
