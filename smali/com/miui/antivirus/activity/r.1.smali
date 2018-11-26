.class final Lcom/miui/antivirus/activity/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic asV:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic asW:Lcom/miui/antivirus/model/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/r;->asV:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/r;->asW:Lcom/miui/antivirus/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/r;->asV:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/r;->asW:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/a;->aCz(Lcom/miui/antivirus/model/b;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/r;->asV:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/r;->asW:Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/a;->aCu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/r;->asV:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayh(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {}, Lcom/miui/antivirus/a/e;->aAd()V

    return-void
.end method
