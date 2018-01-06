.class Lmiui/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmiui/a/e;


# direct methods
.method constructor <init>(Lmiui/a/e;)V
    .locals 0

    iput-object p1, p0, Lmiui/a/f;->a:Lmiui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lmiui/a/f;->a:Lmiui/a/e;

    invoke-virtual {v0}, Lmiui/a/e;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
