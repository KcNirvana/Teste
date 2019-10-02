.class public final synthetic Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$ANelxcdzImkA2EjS9sGymbp1i6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$ANelxcdzImkA2EjS9sGymbp1i6Y;->f$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$ANelxcdzImkA2EjS9sGymbp1i6Y;->f$0:Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-static {v0, p1}, Lcom/miui/video/service/update/ui/UpdateDialog;->lambda$showOkCancel$23(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
