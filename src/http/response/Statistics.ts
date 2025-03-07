export interface Statistics {
  tip_block_number: string
  average_block_time: string
  current_epoch_difficulty: number
  hash_rate: string
}

export interface StatisticsWrapper {
  id: number
  type: string
  attributes: Statistics
}
