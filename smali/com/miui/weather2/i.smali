.class Lcom/miui/weather2/i;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lmiui/widget/ClearableEditText;

.field final synthetic b:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;Lmiui/widget/ClearableEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/i;->b:Lcom/miui/weather2/ActivityFindCity;

    iput-object p2, p0, Lcom/miui/weather2/i;->a:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/i;->b:Lcom/miui/weather2/ActivityFindCity;

    iget-object v1, p0, Lcom/miui/weather2/i;->a:Lmiui/widget/ClearableEditText;

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityFindCity;->a(Lcom/miui/weather2/ActivityFindCity;Landroid/view/View;)V

    return-void
.end method
