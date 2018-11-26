.class final Lcom/miui/antispam/ui/b/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Xy:Lcom/miui/antispam/ui/b/r;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/s;->Xy:Lcom/miui/antispam/ui/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/b/s;->Xy:Lcom/miui/antispam/ui/b/r;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/r;->Xx:Lcom/miui/antispam/ui/b/d;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/s;->Xy:Lcom/miui/antispam/ui/b/r;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/r;->Xx:Lcom/miui/antispam/ui/b/d;

    invoke-static {v1}, Lcom/miui/antispam/ui/b/d;->VR(Lcom/miui/antispam/ui/b/d;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/b/s;->Xy:Lcom/miui/antispam/ui/b/r;

    iget-object v2, v2, Lcom/miui/antispam/ui/b/r;->Xx:Lcom/miui/antispam/ui/b/d;

    invoke-static {v2}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/ui/b/d;->VW(Lcom/miui/antispam/ui/b/d;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
