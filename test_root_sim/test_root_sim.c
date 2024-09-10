#include <ROOT-Sim.h>
#include <ROOT-Sim/topology.h>
#include <pseudosql.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#ifndef NUM_LPS
#define NUM_LPS 256
#endif

#ifndef NUM_THREADS
#define NUM_THREADS 0
#endif

#define INPUT_FILE "taxi-1.csv"

FILE *file;
Schema schema;
struct topology *topology;
void InitTopology() {
  topology = InitializeTopology(TOPOLOGY_GRAPH, 41);

  AddTopologyLink(topology, 0, 9, 1);
  static int window0to9 = 60;
  SetTopologyLinkData(topology, 0, 9, (void *)&window0to9);
  AddTopologyLink(topology, 9, 20, 1);
  SetTopologyLinkData(topology, 9, 20, (void *)"DOLocationID,total_amount");
  AddTopologyLink(topology, 0, 6, 1);
  SetTopologyLinkData(topology, 0, 6, (void *)"DOLocationID == 236 && (tpep_pickup_datetime >= 2023-12-32 15:00:00 && tpep_pickup_datetime <= 2024-01-01 04:00:00)");
  AddTopologyLink(topology, 25, 7, 1);
  SetTopologyLinkData(topology, 25, 7, (void *)"tpep_pickup_datetime >= 2024-05-17 10:00:00 && tpep_pickup_datetime <= 2024-17-05 23:59:59");
  AddTopologyLink(topology, 9, 10, 1);
  SetTopologyLinkData(topology, 9, 10, (void *)"PULocationID,passenger_count");
  AddTopologyLink(topology, 9, 13, 1);
  SetTopologyLinkData(topology, 9, 13, (void *)"RatecodeID,VendorID");
  AddTopologyLink(topology, 9, 1, 1);
  SetTopologyLinkData(topology, 9, 1, (void *)"Airport_fee != 0.0");
  AddTopologyLink(topology, 9, 2, 1);
  SetTopologyLinkData(topology, 9, 2, (void *)"total_amount > 100.0");
  AddTopologyLink(topology, 9, 3, 1);
  SetTopologyLinkData(topology, 9, 3, (void *)"tpep_pickup_datetime >= 2023-12-25 00:00:00 && tpep_pickup_datetime <= 2023-12-25 23:59:59");
  AddTopologyLink(topology, 9, 4, 1);
  SetTopologyLinkData(topology, 9, 4, (void *)"PULocationID == 161 || DOLocationID == 161");
  AddTopologyLink(topology, 9, 5, 1);
  SetTopologyLinkData(topology, 9, 5, (void *)"PULocationID == 49 || DOLocationID == 49");
  AddTopologyLink(topology, 9, 8, 1);
  SetTopologyLinkData(topology, 9, 8, (void *)"(tpep_pickup_datetime >= 2023-07-21 00:00:00 && tpep_pickup_datetime <= 2023-07-26 23:59:59) || ((tpep_pickup_datetime >= 2023-03-31 00:00:00 && tpep_pickup_datetime <= 2023-04-01 23:59:59) || (tpep_pickup_datetime >= 2024-05-18 00:00:00 && tpep_pickup_datetime <= 2024-05-22 23:59:59))");
  AddTopologyLink(topology, 1, 16, 1);
  SetTopologyLinkData(topology, 1, 16, (void *)"payment_type,total_amount");
  AddTopologyLink(topology, 2, 19, 1);
  SetTopologyLinkData(topology, 2, 19, (void *)"total_amount,trip_distance");
  AddTopologyLink(topology, 3, 24, 1);
  SetTopologyLinkData(topology, 3, 24, (void *)"total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,Airport_fee");
  AddTopologyLink(topology, 4, 25, 1);
  SetTopologyLinkData(topology, 4, 25, (void *)"Airport_fee,tpep_pickup_datetime,tpep_dropoff_datetime,total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,tip_amount");
  AddTopologyLink(topology, 5, 26, 1);
  SetTopologyLinkData(topology, 5, 26, (void *)"total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,Airport_fee");
  AddTopologyLink(topology, 6, 27, 1);
  SetTopologyLinkData(topology, 6, 27, (void *)"total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,Airport_fee");
  AddTopologyLink(topology, 7, 28, 1);
  SetTopologyLinkData(topology, 7, 28, (void *)"tip_amount");
  AddTopologyLink(topology, 8, 30, 1);
  SetTopologyLinkData(topology, 8, 30, (void *)"DOLocationID,PULocationID,passenger_count");
  AddTopologyLink(topology, 10, 11, 1);
  SetTopologyLinkData(topology, 10, 11, (void *)"PULocationID");
  AddTopologyLink(topology, 13, 14, 1);
  SetTopologyLinkData(topology, 13, 14, (void *)"RatecodeID");
  AddTopologyLink(topology, 16, 17, 1);
  SetTopologyLinkData(topology, 16, 17, (void *)"payment_type");
  AddTopologyLink(topology, 20, 21, 1);
  SetTopologyLinkData(topology, 20, 21, (void *)"DOLocationID");
  AddTopologyLink(topology, 28, 29, 1);
  SetTopologyLinkData(topology, 28, 29, (void *)"tip_amount");
  AddTopologyLink(topology, 11, 12, 1);
  SetTopologyLinkData(topology, 11, 12, (void *)"passenger_count");
  AddTopologyLink(topology, 14, 15, 1);
  SetTopologyLinkData(topology, 14, 15, (void *)"VendorID");
  AddTopologyLink(topology, 17, 18, 1);
  SetTopologyLinkData(topology, 17, 18, (void *)"total_amount");
  AddTopologyLink(topology, 21, 23, 1);
  SetTopologyLinkData(topology, 21, 23, (void *)"total_amount");
  AddTopologyLink(topology, 23, 22, 1);
  SetTopologyLinkData(topology, 23, 22, (void *)"total_amount");

  AddTopologyLink(topology, 22, 31, 1);
  SetTopologyLinkData(topology, 22, 31, (void *)"Query1.csv");
  AddTopologyLink(topology, 15, 32, 1);
  SetTopologyLinkData(topology, 15, 32, (void *)"Query2.csv");
  AddTopologyLink(topology, 12, 33, 1);
  SetTopologyLinkData(topology, 12, 33, (void *)"Query3.csv");
  AddTopologyLink(topology, 24, 34, 1);
  SetTopologyLinkData(topology, 24, 34, (void *)"Query4.csv");
  AddTopologyLink(topology, 29, 35, 1);
  SetTopologyLinkData(topology, 29, 35, (void *)"Query5.csv");
  AddTopologyLink(topology, 18, 36, 1);
  SetTopologyLinkData(topology, 18, 36, (void *)"Query6.csv");
  AddTopologyLink(topology, 30, 37, 1);
  SetTopologyLinkData(topology, 30, 37, (void *)"Query7.csv");
  AddTopologyLink(topology, 19, 38, 1);
  SetTopologyLinkData(topology, 19, 38, (void *)"Query8.csv");
  AddTopologyLink(topology, 26, 39, 1);
  SetTopologyLinkData(topology, 26, 39, (void *)"Query9.csv");
  AddTopologyLink(topology, 27, 40, 1);
  SetTopologyLinkData(topology, 27, 40, (void *)"Query10.csv");
}



void window(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= ExecuteWindow((Message *)content, (WindowData *)data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void projection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wProjection((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void selection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wSelection((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void joinColumns(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wJoin((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void Sum(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, SUM);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void Count(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, COUNT);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void Average(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, AVG);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void groupBy(lp_id_t me, simtime_t now, const void *content, void *data) {
  GroupsList *result= wGroupBy((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, GROUPS, result, now, refs, num_refs);
}

void orderBy(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wOrderBy((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void DataSource(lp_id_t me, simtime_t now, const void *content, void *data) {
}

void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size, void *s)
{
  WindowData *window_data;
  SelectionData *selection_data;
  ProjectionData *projection_data;
  OrderByData *orderBy_data;
  GroupByData *groupBy_data;
  AggregateFunctionData *agg_function_data;
  OutputProcessData *output_data;
  JoinData *join_data;

  switch(me) {
    case 0:
      /* DATA SOURCE */
      switch(event_type) {
        case LP_INIT:
          DataIngestionInit(me, now, &file, INPUT_FILE, &schema);
          break;
        case EVENT:
          DataIngestion(topology, me, now, (DataSourceData *)s, &file, &schema);
          break;
        case LP_FINI:
          DataIngestionCleanUp(file, (DataSourceData *)s);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 1:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 2:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 3:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 4:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 5:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 6:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 0, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 7:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 25, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 8:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 9:
      /* WINDOW */
      switch(event_type) {
        case LP_INIT:
          WindowInit(topology, 0, me);
          break;
        case EVENT:
          window(me, now, content, s);
          break;
        case LP_FINI:
          WindowCleanUp((WindowData *)s);
          break;
        case TERMINATE:
          TerminateWindow(topology, (WindowData *)s, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 10:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 9, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 11:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 10, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 12:
      /* AGGREGATE FUNCTION (Sum) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 11, me);
          break;
        case EVENT:
          Sum(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 13:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 9, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 14:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 13, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 15:
      /* AGGREGATE FUNCTION (Count) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 14, me);
          break;
        case EVENT:
          Count(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 16:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 1, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 17:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 16, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 18:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 17, me);
          break;
        case EVENT:
          Average(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 19:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 2, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 20:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 9, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 21:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 20, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 22:
      /* ORDER BY */
      switch(event_type) {
        case LP_INIT:
          OrderByInit(topology, 23, me);
          break;
        case EVENT:
          orderBy(me, now, content, s);
          break;
        case LP_FINI:
          OrderByCleanUp((OrderByData *)s);
          break;
        case TERMINATE:
          orderBy_data = (OrderByData *)s;
          orderBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 23:
      /* AGGREGATE FUNCTION (Sum) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 21, me);
          break;
        case EVENT:
          Sum(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 24:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 3, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 25:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 4, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 26:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 5, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 27:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 6, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 28:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 7, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 29:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 28, me);
          break;
        case EVENT:
          Average(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 30:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 8, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 31:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 22, 31);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 32:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 15, 32);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 33:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 12, 33);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 34:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 24, 34);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 35:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 29, 35);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 36:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 18, 36);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 37:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 30, 37);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 38:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 19, 38);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 39:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 26, 39);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
    case 40:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 27, 40);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
  }
}

bool CanEnd(lp_id_t me, const void *snapshot) {
  DataSourceData *source_data;
  WindowData *window_data;
  SelectionData *selection_data;
  ProjectionData *projection_data;
  GroupByData *groupBy_data;
  OrderByData *orderBy_data;
  OutputProcessData *output_data;
  JoinData *join_data;
  AggregateFunctionData *agg_function_data;
  switch(me) {
    case 0:
      source_data = (DataSourceData *)snapshot;
      return source_data->can_end;
    case 1:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 2:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 3:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 4:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 5:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 6:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 7:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 8:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 9:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 10:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 11:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 12:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 13:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 14:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 15:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 16:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 17:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 18:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 19:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 20:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 21:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 22:
      orderBy_data = (OrderByData *)snapshot;
      return orderBy_data->can_end;
    case 23:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 24:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 25:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 26:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 27:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 28:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 29:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 30:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 31 ... 40:
      output_data = (OutputProcessData *)snapshot;
      return output_data->can_end;
    default:
      return true;
  }
}

struct simulation_configuration conf = {
  .lps = NUM_LPS,
  .n_threads = NUM_THREADS,
  .termination_time = 0,
  .gvt_period = 1000,
  .log_level = LOG_INFO,
  .stats_file = "stats",
  .ckpt_interval = 0,
  .core_binding = true,
  .serial = false,
  .dispatcher = ProcessEvent,
  .committed = CanEnd,
};

int main(void) {
  InitTopology();
  RootsimInit(&conf);
  return RootsimRun();
}

