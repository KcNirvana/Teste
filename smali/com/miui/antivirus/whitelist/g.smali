.class Lcom/miui/antivirus/whitelist/g;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field private aup:Lcom/miui/common/d/f;

.field final synthetic auq:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/g;->auq:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/g;->aup:Lcom/miui/common/d/f;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/g;->aup:Lcom/miui/common/d/f;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    return-void
.end method
