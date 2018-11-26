.class final Lcom/miui/antispam/ui/b/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Xw:Lcom/miui/antispam/ui/b/d;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/q;->Xw:Lcom/miui/antispam/ui/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/q;->Xw:Lcom/miui/antispam/ui/b/d;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/d;->VR(Lcom/miui/antispam/ui/b/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
