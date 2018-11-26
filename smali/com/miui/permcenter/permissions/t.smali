.class final Lcom/miui/permcenter/permissions/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic PQ:Lcom/miui/permcenter/permissions/f;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/t;->PQ:Lcom/miui/permcenter/permissions/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/t;->PQ:Lcom/miui/permcenter/permissions/f;

    invoke-static {v1, v0}, Lcom/miui/permcenter/permissions/f;->Qt(Lcom/miui/permcenter/permissions/f;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/t;->PQ:Lcom/miui/permcenter/permissions/f;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/f;->Qr(Lcom/miui/permcenter/permissions/f;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/t;->PQ:Lcom/miui/permcenter/permissions/f;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/f;->Qs(Lcom/miui/permcenter/permissions/f;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
