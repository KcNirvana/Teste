.class Lcom/miui/weather2/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/service/ScheduleCheckService;


# direct methods
.method constructor <init>(Lcom/miui/weather2/service/ScheduleCheckService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/service/c;->a:Lcom/miui/weather2/service/ScheduleCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/service/c;->a:Lcom/miui/weather2/service/ScheduleCheckService;

    invoke-static {v0}, Lcom/miui/weather2/service/ScheduleCheckService;->a(Lcom/miui/weather2/service/ScheduleCheckService;)V

    return-void
.end method
