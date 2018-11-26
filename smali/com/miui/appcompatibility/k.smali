.class final Lcom/miui/appcompatibility/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic baI:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/k;->baI:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appcompatibility/k;->baI:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->setResult(I)V

    const-string/jumbo v0, "module_click"

    const-string/jumbo v1, "continue"

    invoke-static {v0, v1}, Lcom/miui/appcompatibility/e;->bwY(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/k;->baI:Lcom/miui/appcompatibility/AppExcepitonTipsActivity;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->finish()V

    return-void
.end method
