.class public Lcom/miui/calendar/event/schema/MovieEvent;
.super Lcom/miui/calendar/event/schema/BaseEvent;
.source "MovieEvent.java"


# static fields
.field public static final CINEMA:Ljava/lang/String; = "cinema"

.field public static final CODE_NAME_1:Ljava/lang/String; = "codeName1"

.field public static final CODE_NAME_2:Ljava/lang/String; = "codeName2"

.field public static final CODE_NUMBER_1:Ljava/lang/String; = "codeNumber1"

.field public static final CODE_NUMBER_2:Ljava/lang/String; = "codeNumber2"

.field public static final MOVIE_NAME:Ljava/lang/String; = "movieName"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final SCREENINGS:Ljava/lang/String; = "screenings"

.field public static final SEAT:Ljava/lang/String; = "seat"

.field private static final TAG:Ljava/lang/String; = "CalThd:D:MovieEvent"


# instance fields
.field public cinema:Ljava/lang/String;

.field public codeName1:Ljava/lang/String;

.field public codeName2:Ljava/lang/String;

.field public codeNumber1:Ljava/lang/String;

.field public codeNumber2:Ljava/lang/String;

.field public movieName:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public screenings:Ljava/lang/String;

.field public seat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEvent;-><init>()V

    return-void
.end method

.method public static parseMovieEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/MovieEvent;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/miui/calendar/event/schema/MovieEvent;

    invoke-direct {v1}, Lcom/miui/calendar/event/schema/MovieEvent;-><init>()V

    const/4 v2, 0x6

    iput v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->eventType:I

    invoke-static {v1, p0, p1}, Lcom/miui/calendar/event/schema/MovieEvent;->fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V

    const-string/jumbo v2, "platform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->platform:Ljava/lang/String;

    const-string/jumbo v2, "codeName1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName1:Ljava/lang/String;

    const-string/jumbo v2, "codeNumber1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber1:Ljava/lang/String;

    const-string/jumbo v2, "codeName2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName2:Ljava/lang/String;

    const-string/jumbo v2, "codeNumber2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber2:Ljava/lang/String;

    const-string/jumbo v2, "movieName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->movieName:Ljava/lang/String;

    const-string/jumbo v2, "cinema"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->cinema:Ljava/lang/String;

    const-string/jumbo v2, "screenings"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->screenings:Ljava/lang/String;

    const-string/jumbo v2, "seat"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/calendar/event/schema/MovieEvent;->seat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CalThd:D:MovieEvent"

    const-string/jumbo v3, "parseMovieEvent()"

    invoke-static {v2, v3, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MovieEvent{platform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codeName1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->codeName1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codeNumber1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codeName2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->codeName2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codeNumber2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", movieName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->movieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cinema=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->cinema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", screenings=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->screenings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/MovieEvent;->seat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/miui/calendar/event/schema/BaseEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
