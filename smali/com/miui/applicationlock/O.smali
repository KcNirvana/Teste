.class final Lcom/miui/applicationlock/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aju:Lcom/miui/applicationlock/l;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/O;->aju:Lcom/miui/applicationlock/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/O;->aju:Lcom/miui/applicationlock/l;

    iget-object v0, v0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anm(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/common/customview/gif/GifImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agm(Landroid/view/View;)V

    return-void
.end method
