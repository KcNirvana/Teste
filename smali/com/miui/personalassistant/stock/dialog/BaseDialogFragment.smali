.class public Lcom/miui/personalassistant/stock/dialog/BaseDialogFragment;
.super Landroid/app/DialogFragment;
.source "BaseDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BaseDialogFragment"

    const-string/jumbo v2, "show fragment exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/stock/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
