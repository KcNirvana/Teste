.class public Lcom/miui/securityscan/cards/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/cards/k;


# instance fields
.field private final Bq:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/e;->Bq:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public eh(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/cards/e;->Bq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-static {v1, p1}, Lcom/miui/securityscan/cards/c;->Ct(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ct(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
