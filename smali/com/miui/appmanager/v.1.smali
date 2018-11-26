.class Lcom/miui/appmanager/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aVX:Ljava/util/ArrayList;

.field final synthetic aVY:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/v;->aVY:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/v;->aVX:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/appmanager/v;->aVX:Ljava/util/ArrayList;

    return-void
.end method
