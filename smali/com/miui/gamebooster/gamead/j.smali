.class final Lcom/miui/gamebooster/gamead/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic kC:Lcom/miui/gamebooster/gamead/Advertisement;

.field final synthetic kD:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gamead/Advertisement;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gamead/j;->kC:Lcom/miui/gamebooster/gamead/Advertisement;

    iput-object p2, p0, Lcom/miui/gamebooster/gamead/j;->kD:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/j;->kD:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/j;->kC:Lcom/miui/gamebooster/gamead/Advertisement;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dl(Lcom/miui/gamebooster/gamead/BaseModel;)V

    return-void
.end method
