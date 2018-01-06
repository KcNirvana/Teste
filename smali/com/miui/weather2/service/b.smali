.class Lcom/miui/weather2/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/weather2/service/a;


# direct methods
.method constructor <init>(Lcom/miui/weather2/service/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/service/b;->b:Lcom/miui/weather2/service/a;

    iput-boolean p2, p0, Lcom/miui/weather2/service/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/service/b;->b:Lcom/miui/weather2/service/a;

    iget-object v1, p0, Lcom/miui/weather2/service/b;->b:Lcom/miui/weather2/service/a;

    iget-object v1, v1, Lcom/miui/weather2/service/a;->a:Landroid/content/Context;

    const-string v2, "com.miui.weather2.BACKGROUND_LOCATION_UPDATE_COMPLETED"

    const-string v3, "is_location_update_fail_key"

    iget-boolean v4, p0, Lcom/miui/weather2/service/b;->a:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/weather2/service/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
