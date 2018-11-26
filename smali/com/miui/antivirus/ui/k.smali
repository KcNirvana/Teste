.class final Lcom/miui/antivirus/ui/k;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aqP:Lcom/miui/antivirus/ui/MainHandleBar;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/MainHandleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/k;->aqP:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/k;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/k;->aqP:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainHandleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/g;->aDd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/k;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/ui/k;->aqP:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-static {v0}, Lcom/miui/antivirus/ui/MainHandleBar;->awo(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/k;->aqP:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainHandleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v3, 0x7f070734

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
