.class final Lcom/miui/appmanager/model/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aRe:Lcom/miui/appmanager/model/t;

.field final synthetic aRf:Lcom/miui/appmanager/model/s;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/t;Lcom/miui/appmanager/model/s;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/E;->aRe:Lcom/miui/appmanager/model/t;

    iput-object p2, p0, Lcom/miui/appmanager/model/E;->aRf:Lcom/miui/appmanager/model/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/E;->aRf:Lcom/miui/appmanager/model/s;

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/model/s;->onClick(Landroid/view/View;)V

    return-void
.end method
