.class final Lcom/miui/appmanager/model/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aQW:Lcom/miui/appmanager/model/d;

.field final synthetic aQX:Lcom/miui/appmanager/model/c;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/model/d;Lcom/miui/appmanager/model/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/A;->aQW:Lcom/miui/appmanager/model/d;

    iput-object p2, p0, Lcom/miui/appmanager/model/A;->aQX:Lcom/miui/appmanager/model/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/A;->aQX:Lcom/miui/appmanager/model/c;

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/model/c;->onClick(Landroid/view/View;)V

    return-void
.end method
