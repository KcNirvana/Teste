.class final Lcom/hungama/apps/ha/events/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "did"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_key"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aff_id"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "service_id"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_id"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uname"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utype"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vc"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->k()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "vn"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkv"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->o()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "os"

    const-string v2, "ANDROID"

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osv"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nwk"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nwk_bnd"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nwk_crr"

    invoke-virtual {p2}, Lcom/hungama/apps/ha/events/b;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "type"

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/Event;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "etime"

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event"

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "property"

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/Event;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    invoke-static {}, Lcom/hungama/apps/ha/d/a$a;->a()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/hungama/apps/ha/events/c;->b(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/hungama/apps/ha/a/a/c;

    const-string v0, "events"

    invoke-direct {p2, v0}, Lcom/hungama/apps/ha/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {p2, v0, p1}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;

    move-result-object p1

    const-string p2, "created_on"

    invoke-static {}, Lcom/hungama/apps/ha/d/a$a;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;J)Lcom/hungama/apps/ha/a/a/c;

    move-result-object p1

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method
