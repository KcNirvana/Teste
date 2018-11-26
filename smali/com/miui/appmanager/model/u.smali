.class final Lcom/miui/appmanager/model/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aQK:Lcom/miui/appmanager/model/b;

.field final synthetic aQL:Lcom/miui/appmanager/model/a;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/b;Lcom/miui/appmanager/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/u;->aQK:Lcom/miui/appmanager/model/b;

    iput-object p2, p0, Lcom/miui/appmanager/model/u;->aQL:Lcom/miui/appmanager/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/u;->aQL:Lcom/miui/appmanager/model/a;

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/model/a;->onClick(Landroid/view/View;)V

    return-void
.end method
