.class Lcom/miui/video/service/share/ShareFragment$2;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/share/ShareFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/share/ShareFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/share/ShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareFragment$2;->this$0:Lcom/miui/video/service/share/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment$2;->this$0:Lcom/miui/video/service/share/ShareFragment;

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareFragment;->dismissAllowingStateLoss()V

    return-void
.end method
