.class Lcom/miui/weather2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/l;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/l;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityFindCity;->onBackPressed()V

    return-void
.end method
